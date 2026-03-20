// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EmployeeRecords {

    struct Record {
        string employeeId;
        string eventType;
        string hashValue;
        uint timestamp;
    }

    Record[] public records;

    event RecordAdded(string employeeId, string eventType, string hashValue, uint timestamp);

    function addRecord(
        string memory _employeeId,
        string memory _eventType,
        string memory _hashValue
    ) public {

        records.push(Record({
            employeeId: _employeeId,
            eventType: _eventType,
            hashValue: _hashValue,
            timestamp: block.timestamp
        }));

        emit RecordAdded(_employeeId, _eventType, _hashValue, block.timestamp);
    }

    function getRecord(uint index) public view returns (
        string memory,
        string memory,
        string memory,
        uint
    ) {
        Record memory r = records[index];
        return (r.employeeId, r.eventType, r.hashValue, r.timestamp);
    }

    function getRecordsCount() public view returns (uint) {
        return records.length;
    }
}