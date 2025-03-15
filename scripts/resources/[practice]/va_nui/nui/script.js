import axios from "axios";

window.addEventListener("message", (event) => {
  const data = event.data;

  if (data.type === "position") {
    document.getElementById("pos-x-output").textContent = Math.round(data.x);
    document.getElementById("pos-y-output").textContent = Math.round(data.y);
    document.getElementById("pos-z-output").textContent = Math.round(data.z);
    document.getElementById("heading-output").textContent = data.heading;
  }

  if (data.type === "ping") {
    axios
      .post(`https://${GetParentResourceName()}/pong`, {
        itemId: "my-item",
      })
      .then((res) => console.log(JSON.stringify(res.data)));

    // ORIGINAL WAY OF DOING REQUESTS
    // fetch(`https://${GetParentResourceName()}/pong`, {
    //   method: "POST",
    //   headers: {
    //     "Content-Type": "application/json",
    //   },
    //   body: JSON.stringify({
    //     itemId: "my-item",
    //   }),
    // }).then((response) =>
    //   response.json().then((response) => console.log(JSON.stringify(response)))
    // );
  }
});

document.addEventListener("DOMContentLoaded", () => {
  document
    .getElementById("destination-cancle")
    .addEventListener("click", () => {
      axios.post(`https://${GetParentResourceName()}/releseFocus`, {});
    });

  document
    .getElementById("destination-submit")
    .addEventListener("click", () => {
      axios.post(`https://${GetParentResourceName()}/teleport`, {
        x: document.getElementById("destination-x").value,
        y: document.getElementById("destination-y").value,
        z: document.getElementById("destination-z").value,
      });
    });
});
