import plotly.express as px
import plotly.graph_objects as go

def fit_cartons(car_length, car_width, car_height, carton_length, carton_width, carton_height):
    orientations = [
        (carton_length, carton_width, carton_height),
        (carton_width, carton_length, carton_height),
        (carton_length, carton_height, carton_width),
        (carton_height, carton_length, carton_width),
        (carton_width, carton_height, carton_length),
        (carton_height, carton_width, carton_length)
    ]
    
    max_cartons = 0
    best_orientation = None
    
    for orientation in orientations:
        cartons_lengthwise = car_length // orientation[0]
        cartons_widthwise = car_width // orientation[1]
        cartons_heightwise = car_height // orientation[2]
        total_cartons = cartons_lengthwise * cartons_widthwise * cartons_heightwise
        
        if total_cartons > max_cartons:
            max_cartons = total_cartons
            best_orientation = orientation
    
    return max_cartons, best_orientation

def plot_cartons(car_length, car_width, car_height, carton_length, carton_width, carton_height, orientation):
    fig = go.Figure()

    # Draw the car as a wireframe
    car = [
        [0, 0, 0],
        [car_length, 0, 0],
        [car_length, car_width, 0],
        [0, car_width, 0],
        [0, 0, car_height],
        [car_length, 0, car_height],
        [car_length, car_width, car_height],
        [0, car_width, car_height]
    ]
    
    car_edges = [
        (0, 1), (1, 2), (2, 3), (3, 0),
        (4, 5), (5, 6), (6, 7), (7, 4),
        (0, 4), (1, 5), (2, 6), (3, 7)
    ]
    
    for edge in car_edges:
        fig.add_trace(go.Scatter3d(
            x=[car[edge[0]][0], car[edge[1]][0]],
            y=[car[edge[0]][1], car[edge[1]][1]],
            z=[car[edge[0]][2], car[edge[1]][2]],
            mode='lines',
            line=dict(color='cyan', width=2)
        ))

    # Draw the cartons
    cartons_lengthwise = car_length // orientation[0]
    cartons_widthwise = car_width // orientation[1]
    cartons_heightwise = car_height // orientation[2]
    
    for i in range(cartons_lengthwise):
        for j in range(cartons_widthwise):
            for k in range(cartons_heightwise):
                x = i * orientation[0]
                y = j * orientation[1]
                z = k * orientation[2]
                carton = [
                    [x, y, z],
                    [x + orientation[0], y, z],
                    [x + orientation[0], y + orientation[1], z],
                    [x, y + orientation[1], z],
                    [x, y, z + orientation[2]],
                    [x + orientation[0], y, z + orientation[2]],
                    [x + orientation[0], y + orientation[1], z + orientation[2]],
                    [x, y + orientation[1], z + orientation[2]]
                ]
                
                carton_edges = [
                    (0, 1), (1, 2), (2, 3), (3, 0),
                    (4, 5), (5, 6), (6, 7), (7, 4),
                    (0, 4), (1, 5), (2, 6), (3, 7)
                ]
                
                for edge in carton_edges:
                    fig.add_trace(go.Scatter3d(
                        x=[carton[edge[0]][0], carton[edge[1]][0]],
                        y=[carton[edge[0]][1], carton[edge[1]][1]],
                        z=[carton[edge[0]][2], carton[edge[1]][2]],
                        mode='lines',
                        line=dict(color='orange', width=2)
                    ))

    fig.update_layout(
        scene=dict(
            xaxis_title='Length',
            yaxis_title='Width',
            zaxis_title='Height'
        ),
        title="3D Visualization of Cartons in Car"
    )
    
    fig.show()

car_length = 181
car_width = 157
car_height = 120
carton_length = 60
carton_width = 40
carton_height = 40

max_cartons, best_orientation = fit_cartons(car_length, car_width, car_height, carton_length, carton_width, carton_height)
print(f"Maximum number of cartons that can fit: {max_cartons}")

plot_cartons(car_length, car_width, car_height, carton_length, carton_width, carton_height, best_orientation)