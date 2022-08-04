// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/**
 * @title NadraSystem
 * @dev Store and Retreive the Citizen Data Store in mapping.
 */
contract NadraSystem {
    struct dataBase {
        string name;
        string cnic;
        string city;
        uint dob;
    }

    uint256 public UserCount;

    mapping(uint => dataBase) public citizenDetails;

    event UserDetails(uint Id, string name, string cnic, string city, uint dob);

    /**
     * @dev addDetails is used to add the citizen.
     * @param name - name
     * @param cnic - cnic of the citizen
     * @param city - city of the citizen
     * @param dob - dob of the citizen
     */
    function addDetails(
        string memory name,
        string memory cnic,
        string memory city,
        uint dob
    ) public {
        citizenDetails[UserCount] = dataBase(name, cnic, city, dob);
        UserCount++;
        emit UserDetails(UserCount, name, cnic, city, dob);
    }

    /**
     * @dev getDetailsById is used to get the Player with respective Id.
     */
    function getDetailsById(uint Id)
        public
        view
        returns (
            string memory,
            string memory,
            string memory,
            uint256
        )
    {
        return (
            citizenDetails[Id].name,
            citizenDetails[Id].cnic,
            citizenDetails[Id].city,
            citizenDetails[Id].dob
        );
    }

    /**
     * @dev getAllDetails is used to get the all citizenDetails.
     */
    function getAllDetails() public view returns (dataBase[] memory) {
        dataBase[] memory Id = new dataBase[](UserCount);
        for (uint i = 0; i < UserCount; i++) {
            dataBase storage data = citizenDetails[i];
            Id[i] = data;
        }
        return Id;
    }
}
