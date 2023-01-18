# REPO_URL https://github.com/aanmeba/blackbird-app

# 1. Create a react app
npx create-react-app blackbird-app
cd blackbird-app

# 2. Commit the code using gh cli
gh auth login
gh repo create

# 3. Switch branch to 'update_logo'
git checkout -b update_logo

# 4. Replace existing logo
sed -i "" 's|src={logo}|src="https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg"|' src/App.js

# 5. Replace existing link
sed -i "" 's|href="https://reactjs.org"|href="https://www.propelleraero.com/dirtmate/"|g' src/App.js

# 6. Commit and push the code
git add .
git commit -m "update the logo and hyperlink"
git push -u origin update_logo

# 7. Create PR
gh pr create --title "Update logo and link" --body "change logo and hyperlink"

# 8. Merge the PR
gh pr merge
