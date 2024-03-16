using System;
using GTA;
using GTA.Native;
using GTA.Math;

namespace Afterburners
{
    public class Afterburners : Script
    {
        #region Constant Vars
        /// <summary>
        /// Scale of afterburners.
        /// </summary>
        public static readonly float Scale = 0.4f;

        /// <summary>
        /// Left afterburner relative offset.
        /// </summary>
        public static readonly Vector3 Offset = new Vector3(0.0f, 0.0f, 0.0f);

        /// <summary>
        /// Vehicles with afterburner support.
        /// </summary>
        public readonly VehicleHash[] Vehicles = new VehicleHash[] {
        (VehicleHash)0xF3EDAC24
        };

#endregion

        /// <summary>
        /// Player vehicle
        /// </summary>
        private PlayerVehicle mainVehicle;

        /// <summary>
        /// Initialize the script
        /// </summary>
        public Afterburners()
        {
            Tick += OnTick;
        }

        /// <summary>
        /// Tick event
        /// </summary>
        private void OnTick(object sender, EventArgs e)
        {
            var player = Game.Player.Character;

            if (mainVehicle != null && !player.IsInVehicle(mainVehicle.Vehicle))
            {
                mainVehicle.KillAfterburner();
                mainVehicle = default(PlayerVehicle);
            }

            if (player.IsInVehicle())
            {
                if (mainVehicle != null && player.CurrentVehicle.IsDriveable)
                    mainVehicle.Update();

                foreach (var vehicle in Vehicles)
                {
                    if (player.CurrentVehicle.Model == vehicle && (mainVehicle == null || mainVehicle.Handle != player.CurrentVehicle.Handle))
                    {
                        mainVehicle = new PlayerVehicle(player.CurrentVehicle);
                        mainVehicle.InitializeAfterburner();
                    }
                }
            }   
        }
    }

    public class PlayerVehicle : Entity
    {
        private readonly Vehicle _vehicle;
        private LoopedPTFX afterburnerL = new LoopedPTFX("core", "veh_exhaust_afterburner");

        public Vehicle Vehicle { get { return _vehicle; } }

        /// <summary>
        /// Initialize the class
        /// </summary>
        /// <param name="vehicle"></param>
        public PlayerVehicle(Vehicle vehicle) : base(vehicle.Handle)
        {
            _vehicle = vehicle;
        }

        /// <summary>
        /// Initialize afterburners on entitys exhaust dummies
        /// </summary>
        public void InitializeAfterburner()
        {
            if (!afterburnerL.IsLoaded)
                afterburnerL.Load();

            afterburnerL.Start(_vehicle, Afterburners.Scale, Afterburners.Offset, Vector3.Zero, (Bone)Function.Call<int>(Hash._GET_ENTITY_BONE_INDEX, _vehicle, "afterburner"));
            Function.Call((Hash)0xDCB194B85EF7B541, afterburnerL.Handle, 3000.0f);
        }

        /// <summary>
        /// Kill the afterburner FX
        /// </summary>
        public void KillAfterburner()
        {
            afterburnerL.Remove();
        }

        /// <summary>
        /// Update FX based on acceleration
        /// </summary>
        public void Update()
        {
            Function.Call(Hash.SET_PARTICLE_FX_LOOPED_EVOLUTION, afterburnerL.Handle, "throttle", _vehicle.Acceleration, 0);
        }
    }

    public class LoopedPTFX
    {
        public int Handle { get; private set; }
        public string AssetName { get; private set; }
        public string FXName { get; private set; }

        /// <summary>
        /// If the particle FX is spawned.
        /// </summary>
        public bool Exists { get { if (Handle == -1) return false; return Function.Call<bool>(Hash.DOES_PARTICLE_FX_LOOPED_EXIST, Handle); } }

        /// <summary>
        /// If the particle FX asset is loaded.
        /// </summary>
        public bool IsLoaded { get { return Function.Call<bool>(Hash.HAS_NAMED_PTFX_ASSET_LOADED, AssetName); } }

        /// <summary>
        /// Initialize the class
        /// </summary>
        /// <param name="assetName"></param>
        /// <param name="fxName"></param>
        public LoopedPTFX(string assetName, string fxName)
        {
            this.Handle = -1;
            this.AssetName = assetName;
            this.FXName = fxName;
        }

        /// <summary>
        /// Load the particle FX asset
        /// </summary>
        public void Load()
        {
            Function.Call(Hash.REQUEST_NAMED_PTFX_ASSET, AssetName);
            while (!Function.Call<bool>(Hash.HAS_NAMED_PTFX_ASSET_LOADED))
                Script.Wait(0);
        }

        /// <summary>
        /// Start particle FX on the specified entity.
        /// </summary>
        /// <param name="entity">Entity to attach to.</param>
        /// <param name="scale">Scale of the fx.</param>
        /// <param name="offset">Optional offset.</param>
        /// <param name="rotation">Optional rotation.</param>
        /// <param name="bone">Entity bone.</param>
        public void Start(Entity entity, float scale, Vector3 offset, Vector3 rotation, Bone? bone)
        {
            if (Handle != -1) return;

            Function.Call(Hash._SET_PTFX_ASSET_NEXT_CALL, AssetName);

            Handle = bone == null ?
                Function.Call<int>(Hash.START_PARTICLE_FX_LOOPED_ON_ENTITY, FXName,
                entity, offset.X, offset.Y, offset.Z, rotation.X, rotation.Y, rotation.Z, scale, 0, 0, 1) :
                Function.Call<int>(Hash._START_PARTICLE_FX_LOOPED_ON_ENTITY_BONE, FXName,
                entity, offset.X, offset.Y, offset.Z, rotation.X, rotation.Y, rotation.Z, (int)bone, scale, 0, 0, 0);
        }

        /// <summary>
        /// Start particle FX on the specified entity.
        /// </summary>
        /// <param name="entity">Entity to attach to.</param>
        /// <param name="scale">Scale of the fx.</param>
        public void Start(Entity entity, float scale)
        {
            Start(entity, scale, Vector3.Zero, Vector3.Zero, null);
        }

        /// <summary>
        /// Start particle FX at the specified position.
        /// </summary>
        /// <param name="position">Position in world space.</param>
        /// <param name="scale">Scale of the fx.</param>
        /// <param name="rotation">Optional rotation.</param>
        public void Start(Vector3 position, float scale, Vector3 rotation)
        {
            if (Handle != -1) return;

            Function.Call(Hash._SET_PTFX_ASSET_NEXT_CALL, AssetName);

            Handle = Function.Call<int>(Hash.START_PARTICLE_FX_LOOPED_AT_COORD, FXName,
             position.X, position.Y, position.Z, rotation.X, rotation.Y, rotation.Z, scale, 0, 0, 0, 0);
        }

        /// <summary>
        /// Start particle FX at the specified position.
        /// </summary>
        /// <param name="position">Position in world space.</param>
        /// <param name="scale">Scale of the fx.</param>
        public void Start(Vector3 position, float scale)
        {
            Start(position, scale, Vector3.Zero);
        }

        /// <summary>
        /// Remove the particle FX
        /// </summary>
        public void Remove()
        {
            if (Handle == -1) return;

            Function.Call(Hash.REMOVE_PARTICLE_FX, Handle, 0);
            Handle = -1;
        }

        /// <summary>
        /// Remove the particle FX in range
        /// </summary>
        public void Remove(Vector3 position, float radius)
        {
            if (Handle == -1) return;

            Function.Call(Hash.REMOVE_PARTICLE_FX_IN_RANGE, position.X, position.Y, position.Z, radius);
            Handle = -1;
        }

        /// <summary>
        /// Unload the loaded particle FX asset
        /// </summary>
        public void Unload()
        {
            if (IsLoaded)
                Function.Call((Hash)0x5F61EBBE1A00F96D, AssetName);
        }
    }
}
