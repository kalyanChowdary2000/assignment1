const express = require('express');
const app = express();
const PORT =  4000;

app.get('/', (req, res) => {
    res.send('Hello kalyan, deployment is working2');
});


app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
