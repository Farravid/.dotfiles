//$
const COLOR_PALETTE : &str = "33 21 16 100 170 106 84 100 171 79 34 100 170 120 53 100 199 143 26 100 182 164 74 100 163 166 114 100 199 196 195 100 88 79 75 100 170 106 84 100 171 79 34 100 170 120 53 100 199 143 26 100 182 164 74 100 163 166 114 100 199 196 195 100";
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