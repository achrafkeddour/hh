import random
import time

class Thermostat:
    def __init__(self, desired_temperature):
        self.desired_temperature = desired_temperature
        self.current_temperature = random.uniform(15.0, 25.0)  # Température initiale entre 15 et 25 degrés Celsius

    def update_temperature(self):
        # Simuler l'effet du chauffage ou du refroidissement
        if self.current_temperature < self.desired_temperature:
            self.current_temperature += random.uniform(0.1, 0.5)  # Chauffage
        elif self.current_temperature > self.desired_temperature:
            self.current_temperature -= random.uniform(0.1, 0.5)  # Refroidissement

        # Simuler des facteurs externes pouvant affecter la température
        self.current_temperature += random.uniform(-0.2, 0.2)  # Fluctuation aléatoire

    def run_simulation(self, duration):
        for _ in range(duration):
            self.update_temperature()
            print(f"Température actuelle : {self.current_temperature:.2f}°C")
            time.sleep(1)

# Exemple d'utilisation
desired_temperature = 22.0  # Température souhaitée en Celsius
simulation_duration = 10    # Durée de la simulation en secondes

thermostat = Thermostat(desired_temperature)
thermostat.run_simulation(simulation_duration)
