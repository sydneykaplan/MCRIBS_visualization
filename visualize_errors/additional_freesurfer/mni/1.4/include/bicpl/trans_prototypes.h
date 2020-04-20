#ifndef  DEF_trans_prototypes
#define  DEF_trans_prototypes

public  void  get_nonlinear_warp(
   Real     **positions,   /* n_points x n_dims */
   Real     **values,   /* n_points x n_values */
   Real     **INVMLY,   /* n_points+1+n_dims x n_values */
   int      n_points,
   int      n_dims,
   int      n_values );

public  void  compute_transform_from_tags(
    int                 npoints, 
    Real                **tag_list1, 
    Real                **tag_list2, 
    Trans_type          trans_type,
    General_transform   *transform);

public  void  build_transformation_matrix(
    Transform   *lt, 
    Real        center[],
    Real        translations[],
    Real        scales[],
    Real        shears[],
    Real        rotations[] );

public  void  transpose(
    int     rows,
    int     cols,
    Real    **mat,
    Real    **mat_transpose );

public  void  matrix_multiply(
    int    ldim,
    int    mdim,
    int    ndim, 
    Real   **Amat,
    Real   **Bmat,
    Real   **Cmat );

public  BOOLEAN  optimize_simplex(
    Real           **pts1,
    Real           **pts2, 
    int            npoints, 
    Trans_type     trans_type,
    Real           center[],
    Real           translations[],
    Real           scales[],
    Real           shears[],
    Real           rotations[] );

public  void  procrustes(
    int         npoints,
    int         ndim, 
    Real        **Apoints,
    Real        **Bpoints,
    Real        translation[],
    Real        centre_of_rotation[],
    Transform   *rotation_transform,
    Real        *scale_ptr );

public  BOOLEAN  rotmat_to_ang(
    Transform   *rot_trans,
    Real        *ang );

public void safe_compute_transform_from_tags(
    int                 npoints, 
    Real                **tag_list1, 
    Real                **tag_list2, 
    Trans_type          trans_type,
    General_transform   *transform );

public  void  make_scale_transform( 
    Real        sx,
    Real        sy,
    Real        sz,
    Transform   *transform );

public  void  set_transform_x_and_z_axes(
    Transform   *transform,
    Vector      *x_axis,
    Vector      *z_axis );

public  void  make_translation_transform(
    Real        x_trans,
    Real        y_trans,
    Real        z_trans,
    Transform   *transform );

public  void  make_origin_transform(
    Point       *origin,
    Transform   *transform );

public  void  make_rotation_transform(
    Real       radians,
    int        axis,
    Transform  *transform );

public  void  make_transform_relative_to_point(
    Point      *point,
    Transform  *transform,
    Transform  *rel_transform );

public  void  make_transform_in_coordinate_system(
    Point      *origin,
    Vector     *x_axis,
    Vector     *y_axis,
    Vector     *z_axis,
    Transform  *transform,
    Transform  *rel_transform );

public  void  make_rotation_about_axis(
    Vector     *axis,
    Real       angle,
    Transform  *transform );

public  void  convert_2d_transform_to_rotation_translation(
    Transform  *transform,
    Real       *degrees_clockwise,
    Real       *x_trans,
    Real       *y_trans );

public  Real  compute_clockwise_rotation( Real x, Real y );

public  BOOLEAN  is_transform_right_handed(
    Transform   *transform );

public  void  make_identity_transform_2d(
    Transform_2d *transform );

public  void  get_inverse_transform_2d(
    Transform_2d   *transform,
    Transform_2d   *inverse );

public  void  transform_point_2d(
    Transform_2d   *transform,
    Real           x,
    Real           y,
    Real           *x_trans,
    Real           *y_trans );

public  void  get_least_squares_transform_2d(
    int           n_points,
    Real          x[],
    Real          y[],
    Real          x_trans[],
    Real          y_trans[],
    Transform_2d  *transform_2d );

public  VIO_Status  write_transform_file(
    STRING       filename,
    STRING       comments,
    Transform    *transform );

public  VIO_Status  read_transform_file(
    STRING       filename,
    Transform    *transform );
#endif
