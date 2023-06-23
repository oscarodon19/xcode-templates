# Custom Swift XcodeTemplates

## Description

The project is a script that simplifies the process of creating new project structures and specific files in Xcode for iOS developers. By running this script, you can quickly install custom templates that will be ready to use in Xcode whenever you need to create a new file.

Lets say that you have to create a view model for an app flow, you only have to use your viewModel template to have all the basic structure of that kind of file or even if you want to have an entire folder with all the layers that you are using for your architecture you can prepare it in a custom template and install it with this script.

## Features

- Easily create project structures and files in Xcode.
- Saves time by automating the setup process.
- Provides a consistent file organization across projects.

## Installation

1. Open your terminal.

2. Clone the repository to your local machine:

    ``` bash
    git clone https://github.com/oscarodon19/xcode-templates.git
    ```

3. Change directory to the project:

    ``` bash
    # Yhis is just an example, use the path where you cloned the project
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

[Image]

## Templates available

- **Quick & Nimble Unit Test:** It creates all the boilerplate code for a test in case you use Quick & Nimble library to write your unit test.
- **Scene:** Creates an **entire folder structure for an app flow using clean architecture** so it have **Presantation, Domain and Data layers** adding a Core Layer for all the classes that are shared like extensions, Protocols file, resolvers and so on. It also creates **basic classes that each layer must have incluiding their protocols**.

## How to add/update/remove templates?

### Add new templates to the installer

If you want you can create your own templates and use the script to install them, all you have to do is create a new subfolder with the `.xctemplate` extension e.g. `[Your Template Name].xctemplate` inside `Custom Templates` folder and them run the script as we indicates on step 4 of the [instalation section](#installation).

### Remove or modify existing template

If you want to modify or delete an already installed template you haveto go to this folder  `~/Library/Developer/Xcode/Templates/File Templates` and make the corresponding changes.
