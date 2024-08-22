//$
const COLOR_PALETTE : &str = "39 29 12 100 198 150 64 100 179 158 104 100 162 167 147 100 130 162 168 100 98 146 169 100 75 136 170 100 201 198 194 100 93 85 72 100 198 150 64 100 179 158 104 100 162 167 147 100 130 162 168 100 98 146 169 100 75 136 170 100 201 198 194 100";
//&

use anyhow::Result;
use dygma_focus::prelude::*;
use dygma_focus::helpers::*;

#[tokio::main]
async fn main() -> Result<()> 
{
    let mut focus = Focus::new_via_port("/dev/ttyACM0")?;
    let new_palette = string_to_rgbw_vec(COLOR_PALETTE)?;
    focus.palette_rgbw_set(&new_palette).await?;
     
    Ok(())
}