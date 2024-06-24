# SuiteCRM for Travel Agency

This CRM solution extends the powerful capabilities of SuiteCRM to meet the unique needs of travel businesses, enhancing client management, and booking processes.

## Description

This repository contains the customizations applied to SuiteCRM for a travel agency setup.

## Main Features

- **Client Management**: Enhanced modules for managing client details including travel preferences, previous bookings, and feedback.
- **Booking System**: Integrated booking management module that supports scheduling, pricing, and availability checking.
- **Itinerary Planner**: Custom workflow for creating, updating, and managing travel itineraries.
- **Travel Reports**: Custom reports for managing travel bookings.

## Installation

Follow these steps to set up the SuiteCRM for Travel Agency on your server:

1. **Install suitecrm**: 

    Follow the [SuiteCRM installation guide](https://docs.suitecrm.com/admin/installation-guide/) to install SuiteCRM on your server.

2. **Modify DB schema**:
    Make the necessary changes to the suitecrm DB schema using liquibase

   ```bash
   liquibase update --changelog-file=suitecrm-changelog.mariadb.sql
   ```

3. **Install customizations**:
    Copy the `custom` directory from this repository to the suitecrm installation.

## License

Distributed under the MIT License. See [LICENSE](LICENSE) for more information.

## Contact

Feel free to contact me for questions or project collaborations.
- **Email:** [djay@innotech.io](mailto:djay@innotech.io)
- **LinkedIn:** [LinkedIn Profile](https://www.linkedin.com/in/djay93)
