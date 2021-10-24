function o = bonus2_linearity(f)
    o = 'Non-linear';
    if bonus2_scaling(f) == 'Homogeneous' && bonus2_additivity(f) == 'Additive'
        o = 'Linear';
    end
end