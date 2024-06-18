#### Class Descriptions

1. **CircuitSimulator:**
    - Manages the overall simulation process.
    - Holds and manages components (transistors, resistors, etc.).
    - Simulates radiation effects on the circuit.

2. **ComponentModel:**
    - Base class for all circuit components.
    - Defines an interface for applying radiation effects.

3. **TransistorModel (inherits from ComponentModel):**
    - Models a transistor with parameters for radiation sensitivity.
    - Implements how radiation effects alter transistor behavior.

4. **FaultModel:**
    - Defines fault models that describe different types of radiation-induced faults.

5. **InjectionEngine:**
    - Manages the injection of faults into the circuit.
    - Logs fault details.

6. **DataPoint:**
    - Represents a single data point from simulation results.

7. **ReportGenerator:**
    - Generates reports from simulation results.

8. **Plotter:**
    - Plots simulation results for visualization.

9. **Circuit:**
    - Manages the overall circuit structure and components.
    - Provides methods for adding components, injecting faults, and logging activities.
