
set_property ASYNC_REG TRUE \
  [get_cells {i_lmfc/sysref_d1_reg}] \
  [get_cells {i_lmfc/sysref_d2_reg}]

# Make sure that the device clock to sysref skew is at least somewhat
# predictable
set_property IOB true \
  [get_cells {i_lmfc/sysref_r_reg}]
