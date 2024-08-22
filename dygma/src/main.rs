//$
const COLOR_PALETTE : &str = "39 38 32 100 198 193 161 100 139 170 156 100 112 130 169 100 180 126 169 100 191 139 177 100 198 152 183 100 201 200 199 100 93 92 87 100 198 193 161 100 139 170 156 100 112 130 169 100 180 126 169 100 191 139 177 100 198 152 183 100 201 200 199 100";
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