

export const messageScroll = () => {
    console.log("hello")
        const messageContainer = document.querySelector('.messages-card-page-container');
        if (messageContainer) {
            messageContainer.scrollTop = messageContainer.scrollHeight;
        }
}