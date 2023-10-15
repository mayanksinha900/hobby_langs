function testTrue(getVal) {
    if (getVal) {
        return "Received affirmation!";
    } else {
        return "Negation found....";
    }
}

console.log(testTrue(true));
