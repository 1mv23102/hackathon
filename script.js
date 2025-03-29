document.getElementById("donorForm").addEventListener("submit", function(event) {
    event.preventDefault();
    
    let donor = {
        name: document.getElementById("name").value,
        bloodType: document.getElementById("bloodType").value,
        address: document.getElementById("address").value,
        contact: document.getElementById("contact").value,
        email: document.getElementById("email").value
    };

    fetch("server.php?action=register", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(donor)
    })
    .then(response => response.text())
    .then(data => alert(data));
});

function findDonors() {
    let bloodType = document.getElementById("searchBloodType").value;

    fetch(`server.php?action=search&bloodType=${bloodType}`)
    .then(response => response.json())
    .then(data => {
        let list = document.getElementById("donorList");
        list.innerHTML = "";
        data.forEach(donor => {
            let div = document.createElement("div");
            div.textContent = `${donor.name} - ${donor.bloodType} - ${donor.address}`;
            list.appendChild(div);
        });
    });
}
