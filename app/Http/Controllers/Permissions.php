<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Models\Permission;
use App\Http\Resources\PermissionResource;
use App\Http\Resources\UserPermissionResource;

class Permissions extends Controller
{


    public function index(Request $request)
    {

        if(!Auth::user()->can('index permission')){
            return  abort(403, 'Unauthorized access this action');
            }


        $users=UserPermissionResource::collection(User::all());

            
            return view('permissions.index',compact('users'));   


    }


    public function add($id)
    {
        if(!Auth::user()->can('assignRole invoice')){
            return  abort(403, 'Unauthorized access this action');
            }
            
        $allPermissions=Permission::all();
        $user=User::findOrfail($id);
        $userPermissions=PermissionResource::collection($user->getAllPermissions());
        return view('permissions.assign',compact('allPermissions','userPermissions'));   

    }


    public function assignPermissionsToUser(Request $request,$id)
    {
        if(!Auth::user()->can('assignRole invoice')){
            return  abort(403, 'Unauthorized access this action');
            }


            $user =User::findOrfail($id);
            $user->syncPermissions($request->permission);
            return redirect()->back()->with('assign Permissions To User success');   

    }

public function getPermissionUser(Request $request)
{

    if(!Auth::user()->can('getPermissionUser permission')){
        return  abort(403, 'Unauthorized access this action');
        }


    $user = User::where('email',$request->email)->first();

// get a list of all permissions directly assigned to the user
$permissionNames = $user->getPermissionNames(); // collection of name strings
// $permissions = $user->permissions; // collection of permission objects
// get all permissions for the user, either directly, or from roles, or from both
// $permissions = $user->getDirectPermissions();
// $permissions = $user->getPermissionsViaRoles();
// $permissions = $user->getAllPermissions();
// get the names of the user's roles
// $roles = $user->getRoleNames(); // Returns a collection

    return $permissionNames;
}


public function permissions()
{
    if(!Auth::user()->can('allpermissions permission')){
        return  abort(403, 'Unauthorized access this action');
        }

$Permissions=Permission::all();

    return $Permissions;
}



public function store(Request $request)
{

    if(!Auth::user()->can('store permission')){
        return  abort(403, 'Unauthorized access this action');
        }


   Permission::create(['name'=>$request->name,'guard_name'=>'web']);

    return redirect()->back()->with('add Permissions success');     


}


}
