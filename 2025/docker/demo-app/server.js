const express = require("express");
const app = express();
const path = require("path");
const MongoClient = require("mongodb").MongoClient;

const PORT = 5050;
app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"));

const MONGO_URL = "mongodb://admin:pass1@localhost:27017";
const client = new MongoClient(MONGO_URL);

//GET all users
app.get("/getUsers", async (req, res) => {
    await client.connect(URL);
    console.log('Connected successfully to server');

    const db = client.db("test-db");
    const data = await db.collection('users').find({}).toArray();
    
    client.close();
    res.send(data);
});



app.listen(PORT, () => {
    console.log(`server running on port ${PORT}`);
});