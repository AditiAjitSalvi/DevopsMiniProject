# Use official Nginx image as the base
FROM nginx:alpine

# Copy all website files into Nginx's HTML directory
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
