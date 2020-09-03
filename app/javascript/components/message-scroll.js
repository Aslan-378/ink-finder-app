

export const messageScroll = () => {
    console.log("hello")
    window.addEventListener('load', (event) => {
        console.log("hi!")
        const messageContainer = document.querySelector('.messages-card-page-container');
        messageContainer.scrollTop = messageContainer.scrollHeight;
      });
}