# 1. Use official Node.js LTS image
FROM node:18

# 2. Set the working directory inside the container
WORKDIR /Nguyen_Khoa_site

# 3. Copy the React app files into the container
COPY myapp/ .

# 4. Install dependencies
RUN npm install

# 5. Expose port 7775 (to match the assignment requirement)
EXPOSE 7775

# 6. Start the React development server
# React dev server runs by default on 3000, we will map it to 7775 later
CMD ["sh", "-c", "HOST=0.0.0.0 npm start"]