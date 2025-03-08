# CSIS11 Students

Repository for students to exchange homework with the instructor. 

### Important
1. **Please make sure your version of this repository on GitHub is private and is accessible by only the instructor and you.**
2. **Please do NOT make changes or add files to the **Instructor** folder, as this is where you will be able to receive new versions of files from the instructor**

## Installation (UPDATED as of March 8, 2025)

### 1. Backup your current copy of CSIS11_Students on your system.
   1. **Backup: Ensure your current homework is saved and use Finder(*macOS*) / Explorer(*Windows*) to copy your CSIS11_Students to your *Desktop*. This is very important!** 
   
### 2. Delete your current working version of CSIS11_Students in your Github account online.
   1. Login to GitHub
   2. Click on Repositories at the top then click on CSIS11_Students. (*See image below.*) Note the CSIS11_Students on the left and the "..." on the right.
   3. Click on the "..." on the right and a popup will say *Settings*, click on *Settings*.
 ![](./github_CSIS11.png)
   3. This will show a **long** list of items. Go to the very bottom, where it says **Danger Zone**. At the bottom of **Danger Zone** is *Delete this repository* in red.
 ![](./github_dangerzone.png)

   4. Follow the instructions after click on *Delete this repository*:
      1. Click on *I want to delete this repository*
      2. Click on *I have read and understand these effects.*
      3. Enter your username/CSIS11_Students
      4. Click on *Delete this repository*.  (*You might need to enter your credentials and the repository will be deleted.*)

### 3. Create a new CSIS11_Students repository on Github
1. On Github, click on Repositories.
2. Click on the new button on the far right. (*See image below.*)
 ![](./github_new.png)
3. In the box beside your user name enter: *CSIS11_Students*  (**Exactly!**)
 ![](./github_name.png)
4. Click on the green Create Repository at the bottom of the page.
 ![](./github_create.png)

**Do NOT close the next page shown on Github, it has your next steps!**

### 4. Connect your **local** repository to your **Github** repository.

Perform the four commands below, **one by one**, ensuring there is **NOT** an error, before going to the next step:
   1. Remove the original connection, if the result is "*error: No such remote: origin*", this is fine:
```bash
git remote remove origin
```

   2. Add the origin which will point to *your* GitHub account, so you will **need to change username**:

```bash
git remote add origin git@github.com:username/CSIS11_Students.git
```

   3. Add the branch, *main*:
```bash
git branch -M main
```

   4. Push the local branch *main* to your Github repository:
```bash
git push -u origin main
```


## Ongoing Operations:

   1. To **sync** with *lkoepsel* (or class) updates:
   ```bash
   git fetch upstream
   git merge upstream/main
   ```

   2. To **update** your work on GitHub:
   - Be sure to use the week-specific folders in the ```student``` folder then commit and push to your repository using VS Code or CLI:
   ```bash
   git add -A # to add all of the changes
   git commit -m "adding my changes for week 5" # Commit your changes
   git push origin # push your change to your repository on GitHub
   ```
