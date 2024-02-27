from PIL import Image
import PIL
import os
import glob

basewidth = 184
def compress_images(directory=False, quality=100):
    if directory:
        os.chdir(directory)
    files = os.listdir()
    images = [file for file in files if file.endswith(('jpg', 'png'))]
    for image in images:
        print(image)
        img = Image.open(image)
        wpercent = (basewidth / float(img.size[0]))
        hsize = int((float(img.size[1]) * float(wpercent)))
        img = img.resize((basewidth, hsize), PIL.Image.LANCZOS)
        img.save(image, optimize=True, quality=quality)
    print ("RESIZE COMPLETED! REFRESH AND RESTART THE SCRIPT!")

compress_images("./html/clothes")