function caseSwitch(val) {
    let answer = "";

    switch(val){
        case 1:
            answer = "alpha";
            break;
        case 2:
            answer = "beta";
            break;
        case 3:
            answer = "gamma";
            break;
        case 4:
            answer = "delta";
            break;
        default:
            answer = "Value outside domain";
            break;
    }

    return answer;
}

console.log(caseSwitch(5));
