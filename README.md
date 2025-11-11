# Flight Booking System

A modern, scalable flight booking system built with Spring Boot and microservices architecture. This application provides a complete solution for managing flights, bookings, and user accounts with real-time monitoring and high availability.

## Features

- **User Management**: Registration, authentication, and profile management
- **Flight Search & Booking**: Search for available flights and book tickets
- **Payment Integration**: Secure payment processing
- **Real-time Updates**: Flight status and booking confirmations
- **Admin Dashboard**: Manage flights, users, and bookings
- **Monitoring**: Integrated with Prometheus, Grafana, and Loki for observability
- **Containerized**: Easy deployment with Docker and Docker Compose
- **CI/CD**: GitHub Actions for automated testing and deployment

## Tech Stack

- **Backend**: Spring Boot 3.2, Java 21
- **Database**: PostgreSQL 15
- **Caching**: Redis
- **Search**: Elasticsearch
- **Message Broker**: RabbitMQ
- **Monitoring**:
  - Prometheus for metrics
  - Grafana for visualization
  - Loki for logs
- **Frontend**: (To be implemented)
- **Containerization**: Docker, Docker Compose
- **CI/CD**: GitHub Actions

## Prerequisites

- Java 21 or higher
- Docker and Docker Compose
- Maven or Gradle (Gradle wrapper included)
- Node.js and npm (for frontend development, if applicable)

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/flight-booking-system.git
cd flight-booking-system
```

### 2. Configure Environment Variables

Create a `.env` file in the project root with the following variables:

```env
# Database
POSTGRES_DB=flightdb
POSTGRES_USER=flightuser
POSTGRES_PASSWORD=your_secure_password

# JWT
JWT_SECRET=your_jwt_secret
JWT_EXPIRATION_MS=86400000

# Other configurations as needed
```

### 3. Build and Run with Docker Compose

```bash
docker-compose up --build -d
```

This will start all the required services including:
- Application server
- PostgreSQL database
- Redis cache
- Prometheus
- Grafana
- Loki
- And other supporting services

### 4. Access the Application

- **Application**: http://localhost:8080
- **API Documentation**: http://localhost:8080/swagger-ui.html
- **Grafana Dashboard**: http://localhost:3000
- **Prometheus**: http://localhost:9090

## Running Tests

To run tests:

```bash
./gradlew test
```

For test coverage report:

```bash
./gradlew jacocoTestReport
```

## 🛠️ Development

### Building the Application

```bash
./gradlew build
```

### Running the Application

```bash
./gradlew bootRun
```

## Monitoring and Logging

The application includes comprehensive monitoring setup:

- **Metrics**: Available at `/actuator/prometheus`
- **Health Checks**: Available at `/actuator/health`
- **Logs**: Centralized logging with Loki
- **Dashboards**: Pre-configured Grafana dashboards

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Spring Boot Team
- Docker Community
- Open Source Contributors

## Contact

Thai Nguyen Vu - thainv.16@vng.com.vn
