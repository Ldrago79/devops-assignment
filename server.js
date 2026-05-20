const express = require('express');
const app = express();

const PORT = process.env.PORT || 3000;
const MESSAGE = process.env.MESSAGE || "Hello, DevOps World!";

app.get('/', (req, res) => {
    res.json({ message: MESSAGE, status: "Success" });
});

// Health check endpoint (Required by assignment)
app.get('/health', (req, res) => {
    res.status(200).json({ status: "Healthy", timestamp: new Date() });
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});