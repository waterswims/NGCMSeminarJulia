function single_proc(a, y)
    for i in 1:y
        a[i] = i + 1
    end
    return a
end

function multi_proc(a, y)
    @sync @parallel for i in 1:y
        a[i] = i + 1
    end
    return a
end

len = 10000
arr = SharedArray(Float64, len)

@time single_proc(arr, len)

@time multi_proc(arr, len)