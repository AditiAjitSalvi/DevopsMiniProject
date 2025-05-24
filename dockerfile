# Use official Nginx image as the base
FROM nginx:alpine

# Copy the HTML file
COPY Home.html /usr/share/nginx/html/Home.html

# Expose port 80 to view the web page
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
