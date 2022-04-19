const { assert } = require("chai");

const SimpleStorage = artifacts.require('SimpleStorage.sol')

contract('SimpleStorage', () => {
    it('shouldSetData', async () => {
        const storage = await SimpleStorage.new()
        await storage.setData(10)
        const updatedData = await storage.displayData()
        assert(updatedData.toString() === "10")
    });
});