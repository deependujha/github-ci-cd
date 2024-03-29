const express = require("express");

const app = express();
const PORT = process.env.port ?? 4000;

app.get("/", (req, res) =>
{
    res.send({
        status: "success",
        msg: "Hello World!😼"
    });
});

app.get("/meow", (req, res) =>
{
    res.send({
        status: "success",
        msg: "meow meow😼"
    });
});

app.listen(PORT, () =>
{
    console.log(`App running on port: ${PORT}`);
});