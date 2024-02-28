const useNuiEvent = (
    handler: (data: any) => void
) => {
    const eventListener: any = (event: any) => {
        handler(event)
    }

    window.onload = () => window.addEventListener('message', eventListener)
    window.onunload = () => window.removeEventListener('message', eventListener)
}

export default useNuiEvent