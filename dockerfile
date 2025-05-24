# Use official Nginx image as the base
FROM nginx:alpine

# Copy your HTML file to Nginx's default public folder, renaming it to index.html
COPY Home.html /usr/share/nginx/html/index.html

# Expose port 80 to view the web page
EXPOSE 8080

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
