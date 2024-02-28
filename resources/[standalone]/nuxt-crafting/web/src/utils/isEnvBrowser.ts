const isEnvBrowser = (): boolean => !(window as any).invokeNative

export default isEnvBrowser