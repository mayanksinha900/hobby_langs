use numpy::exp;

pub fn sigmoid(x:f32, shift:f32, mult:f32) -> f32{
    1 / (1 + exp(-(x + shift) * mult))
}

pub fn _get_time_smooth_representation() -> &arr {

}