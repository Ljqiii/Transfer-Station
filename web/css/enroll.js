var enroll= document.getElementById("enroll");
enroll.onclick= function (e) {
    e.preventDefault();
    enroll.innerHTML= "I could not awaken";
    enroll.style.background= "#27cb8b";
    enroll.style.border= "#27cb8b";
}