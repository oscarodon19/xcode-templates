# Custom Swift XcodeTemplates

## Description

The project is a script that simplifies the process of creating new project structures and specific files in Xcode for iOS developers. By running this script, you can quickly install custom templates that will be ready to use in Xcode whenever you need to create a new file.

Lets say that you have to create a view model for an app flow, you only have to use your viewModel template to have all the basic structure of that kind of file or even if you want to have an entire folder with all the layers that you are using for your architecture you can prepare it in a custom template and install it with this script.

## Features

- Easily create project structures and files in Xcode.
- Saves time by automating the setup process.
- Provides a consistent file organization across projects.

## Installation

### Without cloning the repo

All you have to do is open the terminal and execute this command:

    ``` bash
    curl -SL https://raw.githubusercontent.com/oscarodon19/xcode-templates/master/DownloadCustomTemplates.sh | sh
    ```

### Cloning the repo

If you prefer to clone the repo you can do it of course! To make the instalation cloning it you have to folllow these steps:

1. Open your terminal.

2. Clone the repository to your local machine:

    ``` bash
    git clone https://github.com/oscarodon19/xcode-templates.git
    ```

3. Change directory to the project:

    ``` bash
    cd xcode-templates
    ```

4. Run the shell script:

    ``` bash
    sh DownloadCustomTemplates.sh
    ```

   This will automatically copy the templates to the location `~/Library/Developer/Xcode/Templates/File Templates`

5. The templates should be now available in your Xcode.

## How to use Custom templates?

Once you run the [script to install the templates](#installation), you only have to go to Xcode and select File > New > File where you will see your new templates available to be used.

<p align="center">
    <img width="556" alt="Screenshot 2023-06-23 at 10 57 12" src="https://github.com/oscarodon19/xcode-templates/assets/16545638/fa09a819-4c1a-4c26-8b8d-980f1f7c90bc">
</p>

<br>

<p align="center">
    <img width="556" alt="Screenshot 2023-06-23 at 18 21 20" src="https://github.com/oscarodon19/xcode-templates/assets/16545638/ed04ada5-e89f-4221-8e4d-b543771bb862">
</p>

## Templates available

- **Quick & Nimble Unit Test:** It creates all the boilerplate code for a test in case you use Quick & Nimble library to write your unit test.
- **Scene:** Creates an **entire folder structure for an app flow using clean architecture** so it have **Presantation, Domain and Data layers** adding a Core Layer for all the classes that are shared like extensions, Protocols file, resolvers and so on. It also creates **basic classes that each layer must have incluiding their protocols**.

## How to add/update/remove templates?

### Add new templates to the installer

If you want you can create your own templates and install it manually, all you have to do is create a new subfolder with the `.xctemplate` extension e.g. `[Your Template Name].xctemplate` with your templates inside `~/Library/Developer/Xcode/Templates/File Templates` folder. 

### Remove or modify existing template

If you want to modify or delete an already installed template you haveto go to this folder  `~/Library/Developer/Xcode/Templates/File Templates` and make the corresponding changes.

## Contributing
Contributions are welcome! If you have any ideas, suggestions, cool templates to add, or bug reports, please [create an issue](https://github.com/oscarodon19/xcode-templates/issues/new) or submit a pull request.

## License
This project is licensed under the MIT License.

## Contact
If you have any questions or need further assistance, feel free to reach out to me:

- **Email:** oscarodon19@gmail.com
- **Twitter:** [@oscar_odon](https://twitter.com/oscar_odon)

## Acknowledgments

I would like to acknowledge the following resources that provided inspiration and guidance during the development of this project:

- [Xcode Project and File Templates](https://www.kodeco.com/26582967-xcode-project-and-file-templates) by Kodeco: This article provided valuable insights into the concept of Xcode project and file templates, which served as the foundation for creating custom templates in this script.

- [Create Custom Xcode Templates](https://medium.com/mindful-engineering/create-custom-xcode-templates-908fdd14fbd8) by Mindful Engineering: This informative article offered a step-by-step guide on creating custom Xcode templates. It helped in understanding the underlying mechanics and best practices for designing and utilizing templates effectively.

I express my gratitude to the authors of these articles for sharing their knowledge and expertise, which greatly contributed to the development of this project.

