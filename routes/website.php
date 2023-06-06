<?php
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Permissions;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ArchiveInvoices;
use App\Http\Controllers\ExcellController;
use App\Http\Controllers\InvoiceController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SectionController;

Route::middleware(['auth', 'verified'])->group(function () {

    Route::get('/Home', function () {
        return view('index');
    });
    
    Route::get('/{page}', [AdminController::class, 'index']);


    // Route::resource('sections', SectionController::class);
    Route::get('/sections/index', [SectionController::class, 'index'])->name('sections.index');
    Route::POST('/sections/store', [SectionController::class, 'store'])->name('sections.store');
    Route::patch('/sections/update', [SectionController::class, 'update'])->name('sections.update');
    Route::DELETE('/sections/destroy', [SectionController::class, 'destroy'])->name('sections.destroy');



    Route::get('/products/index', [ProductController::class, 'index'])->name('products.index');
    Route::POST('/products/store', [ProductController::class, 'store'])->name('products.store');
    Route::patch('/products/update', [ProductController::class, 'update'])->name('products.update');
    Route::DELETE('/products/destroy', [ProductController::class, 'destroy'])->name('products.destroy');
    Route::get('section/{id}', [ProductController::class, 'show'])->name('sections');



    Route::get('/invoices/index', [InvoiceController::class, 'index'])->name('invoices.index');
    Route::get('/invoices/create', [InvoiceController::class, 'create'])->name('invoices.create');
    Route::get('/invoices/show/{invoice}', [InvoiceController::class, 'show'])->name('invoices.show');
    Route::POST('/invoices/store', [InvoiceController::class, 'store'])->name('invoices.store');
    Route::get('/invoices/edit', [InvoiceController::class, 'edit'])->name('invoices.edit');
    Route::patch('/invoices/update', [InvoiceController::class, 'update'])->name('invoices.update');
    Route::get('/invoices/updateStatus_show/{id}', [InvoiceController::class, 'updateStatus_show'])->name('invoices.updateStatus_show');
    Route::DELETE('/invoices/destroy', [InvoiceController::class, 'destroy'])->name('invoices.destroy');
   

   
    Route::get('/archive/index', [ArchiveInvoices::class, 'index'])->name('archive.index');
    Route::patch('/archive/restore', [ArchiveInvoices::class, 'restore'])->name('archive.restore');
    Route::DELETE('/archive/trashed', [ArchiveInvoices::class, 'trashed'])->name('archive.trashed');


    Route::get('invoices/export', [ExcellController::class, 'export'])->name('invoices.export');
    Route::POST('invoices/import', [ExcellController::class, 'import'])->name('invoices.import');
    

Route::get('/permissions/index', [Permissions::class, 'index'])->name('permissions.index');
Route::get('/permissions/add/{id}', [Permissions::class,'add'])->name('permissions.add');
Route::post('/permissions/assignPermission/{id}', [Permissions::class, 'assignPermissionsToUser'])->name('permissions.assignPermission');
Route::get('/permissions/getPermissionUser', [Permissions::class, 'getPermissionUser'])->name('permissions.getPermissionUser');
Route::get('/permissions/allpermissions', [Permissions::class, 'permissions'])->name('permissions.permissions');

Route::post('/permissions/store', [Permissions::class, 'store'])->name('permissions.store');

});

// index permission
// index store
// index getPermissionUser
// index allpermissions






