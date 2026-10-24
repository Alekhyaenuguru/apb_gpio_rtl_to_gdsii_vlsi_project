import os
import pya

PDK = "/home/vsduser/VLSI/ciel-pdk/ciel/sky130/versions/1e3554706ddbb2529193bdabbc7128296f3cb44a/sky130A"

DEF_FILE = os.path.abspath("physical_design/results/apb_gpio_final.def")
OUTPUT_GDS = os.path.abspath("physical_design/gds/apb_gpio.gds")

TECH_LEF = os.path.join(
    PDK,
    "libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef"
)

CELL_LEF = os.path.join(
    PDK,
    "libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef"
)

CELL_GDS = os.path.join(
    PDK,
    "libs.ref/sky130_fd_sc_hd/gds/sky130_fd_sc_hd.gds"
)

LAYER_MAP = os.path.join(
    PDK,
    "libs.tech/klayout/tech/sky130A.map"
)

for f in [DEF_FILE, TECH_LEF, CELL_LEF, CELL_GDS, LAYER_MAP]:
    if not os.path.isfile(f):
        raise RuntimeError("Missing file: " + f)

print("Reading DEF:", DEF_FILE)

layout = pya.Layout()

options = pya.LoadLayoutOptions()
lefdef = pya.LEFDEFReaderConfiguration()

lefdef.lef_files = [TECH_LEF, CELL_LEF]
lefdef.map_file = LAYER_MAP
lefdef.macro_layout_files = [CELL_GDS]
lefdef.dbu = 0.001

options.lefdef_config = lefdef

layout.read(DEF_FILE, options)

print("Cells:", layout.cells())

tops = list(layout.top_cells())
print("Top cells:", [c.name for c in tops])

if len(tops) != 1:
    raise RuntimeError("Expected exactly one top cell")

top = tops[0]

print("Top cell:", top.name)
print("Bounding box:", top.bbox())

if top.bbox().empty():
    raise RuntimeError("Top cell has empty geometry")

os.makedirs(os.path.dirname(OUTPUT_GDS), exist_ok=True)

print("Writing GDS:", OUTPUT_GDS)

layout.write(OUTPUT_GDS)

print("GDS size:", os.path.getsize(OUTPUT_GDS))
print("Conversion finished successfully.")
