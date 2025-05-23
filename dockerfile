# Use official Nginx image as the base
FROM nginx:alpine

# Copy your HTML file to Nginx's default public folder
COPY Home.html /usr/share/nginx/html/index.html

# Expose port 80 to view the web page
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]