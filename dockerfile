# Step 1: Use official lightweight Nginx image
FROM nginx:alpine

# Step 2: Remove default Nginx content
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy application files
COPY index.html /usr/share/nginx/html/

# Step 4: Expose port
EXPOSE 80

# Step 5: Run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]   

