
![Screenshot (59)](https://github.com/Abdul-Hussein/Gym-app/assets/136578029/0be3f378-739e-4aec-9099-e642d5c091d7)


### Use Cases

#### Administrator Module
1. **Admin Registration and Login**
   - **Description**: Admin registers and logs into the system.
   - **Data Needed**: `name`, `email`, `password`
   
2. **Add/View Trainers**
   - **Description**: Admin adds new trainers and views a list of all trainers.
   - **Data Needed**: `trainer name`, `expertise`
   
3. **Add/View Packages**
   - **Description**: Admin adds new membership packages and views all available packages.
   - **Data Needed**: `package name`, `description`, `price`, `duration`
   
4. **Register/Search Members**
   - **Description**: Admin registers new members, searches for members by ID or name, and views member details.
   - **Data Needed**: `name`, `email`, `password`, `available days (list of days)`
   
5. **Add/View Memberships**
   - **Description**: Admin assigns memberships to members and views all memberships.
   - **Data Needed**: `member ID`, `package ID`, `start date`, `end date`

#### Member Module
1. **Member Registration and Login**
   - **Description**: Member registers and logs into the system.
   - **Data Needed**: `name`, `email`, `password`, `available days (list of days)`

2. **View Packages**
   - **Description**: Member views all available membership packages.
   - **Data Needed**: `package ID`, `package name`, `description`, `price`, `duration`
   
3. **View Trainers**
   - **Description**: Member views all trainers.
   - **Data Needed**: `trainer ID`, `trainer name`, `expertise`
   
4. **View Membership Details**
   - **Description**: Member views their membership details.
   - **Data Needed**: `membership ID`, `package name`, `start date`, `end date`

5. **View Other Members**
   - **Description**: Member views the list of other members in the gym.
   - **Data Needed**: `member ID`, `name`.

### Data Needed

#### Users
- **User ID**: Unique identifier for the user
- **Name**: Name of the user
- **Email**: Email address of the user
- **Password**: Encrypted password for the user
- **Role**: Role of the user (`ADMIN` or `MEMBER`)
- **Available Days**: List of days the member is available for training

#### Trainers
- **Trainer ID**: Unique identifier for the trainer
- **Name**: Name of the trainer
- **Expertise**: Area of expertise of the trainer

#### Packages
- **Package ID**: Unique identifier for the package
- **Name**: Name of the package
- **Description**: Description of the package
- **Price**: Price of the package
- **Duration**: Duration of the package (e.g., Monthly, Quarterly, Annual)

#### Memberships
- **Membership ID**: Unique identifier for the membership
- **Member ID**: Identifier for the member who owns the membership
- **Package ID**: Identifier for the selected package
- **Start Date**: Start date of the membership
- **End Date**: End date of the membership

