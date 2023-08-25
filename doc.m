%% triangle_circumcircle
%
% Function to compute and display the circumcircle of one given triangle.
%
% Author & support : nicolas.douillet (at) free.fr, 2022.
%
%
%% Syntax
%
% triangle_circumcircle(A, B, C);
%
% triangle_circumcircle(A, B, C, nb_samples);
%
% triangle_circumcircle(A, B, C, nb_samples, option_display);
%
% [R, I, r] = triangle_circumcircle(A, B, C, nb_samples, option_display);
%
%% Description
%
%
% triangle_circumcircle(A, B, C) computes and displays the circumcircle of ABC
% triangle.
%
% triangle_circumcircle(A, B, C, nb_samples) uses nb_samples to draw the
% circle.
%
% triangle_circumcircle(A, B, C, nb_samples, option_display) displays the
% circle when option_display is set either to logical true or real numeric 1, and
% doesn't when it is set to logical false or real numeric 0.
%
% [R, I, r] = triangle_circumcircle(A, B, C, nb_samples, option_display) stores
% the results in [R, I, r] vector.
%
%
%% See also
%
% | <https://fr.mathworks.com/help/matlab/ref/triangulation.circumcenter.html#d124e1261276 circumcenter> |
%   <https://fr.mathworks.com/matlabcentral/fileexchange/119778-triangle-incircle triangle incircle> |
%   <https://fr.mathworks.com/matlabcentral/fileexchange/65574-tetrahedron-circumscribed-sphere?s_tid=prof_contriblnk tetrahedron circumsphere> |
%
%
%% Input arguments
%
%        [Ax]
% - A = [Ay] : real column vector double. 2 <= numel(A) <= 3. One of the three ABC vertices. 
%        [Az]
%
%        [Bx]
% - B = [By] real column vector double. 2 <= numel(A) <= 3. One of the three ABC vertices.
%        [Bz]
%
%        [Cx]
% - C = [Cy] real column vector double. 2 <= numel(A) <= 3. One of the three ABC vertices.
%        [Cz]
%
% - nb_samples : integer scalar double. The number of samples to draw the
%                circumcircle. nb_samples >= 3.
%
% - option_display : logical *true(1) / false(0), to enable/disable the display mode.
%
%
%% Output arguments
%
%        [- Rx -]
% - R = [- Ry -]: real matrix double. The circumcircle coordinates. size(R) = [size(A,1), nb_samples].
%        [- Rz -]
%
%        [Ix]
% - I = [Iy] : real column vector double. 2 <= numel(I) <= 3. The circumcircle centre.
%        [Iz]
%
% - r : real scalar double. the circumcircle radius.
%
%
%% Example #1
% From a triangle of the 3D space
A = 2*(rand(3,1)-0.5);
B = 2*(rand(3,1)-0.5);
C = 2*(rand(3,1)-0.5);
nb_samples = 30;
option_display = true;
triangle_circumcircle(A,B,C,nb_samples,option_display);

%% Example #2
% From a triangle of the 2D space
A = 2*(rand(2,1)-0.5);
B = 2*(rand(2,1)-0.5);
C = 2*(rand(2,1)-0.5);
[R,I,r] = triangle_circumcircle(A,B,C);