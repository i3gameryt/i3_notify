window.addEventListener("message", function (event) {
    if (event.data.action === "showNotification") {
        const container = document.getElementById("notifications");

        if (container.children.length >= 3) {
            container.removeChild(container.firstChild);
        }

        const notif = document.createElement("div");
        notif.classList.add("notify", event.data.notifyType);
        notif.innerText = event.data.message;

        container.appendChild(notif);

        const displayTime = event.data.duration || 5000;

        setTimeout(() => {
            notif.remove();
        }, displayTime);
    }
});
