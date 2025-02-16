<!DOCTYPE html>
<html>
<head>
    <title>Contact Manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script></body>
</head>
<body>
    <div class="container mt-5">
    @if(session('success'))
<div class="alert alert-success alert-dismissible fade show" role="alert" id="flash-message">
    {{ session('success') }}
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<script>
    setTimeout(function() {
        document.getElementById('flash-message').style.display = 'none';
    }, 5000);
</script>
@endif
        <div class="d-flex justify-content-between mb-4">
            <h1>Contact List</h1>
            <a href="{{ route('contacts.create') }}" class="btn btn-primary h-75">Add New Contact</a>
        </div>

        <!-- XML Import Form -->
        <div class="card mb-4">
            <div class="card-header">Bulk Import Contacts</div>
            <div class="card-body">
                <form action="{{ route('contacts.import') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="input-group">
                        <input type="file" class="form-control" name="xml_file" accept=".xml" required>
                        <button type="submit" class="btn btn-success">Import XML</button>
                    </div>
                </form>
            </div>
        </div>

        <!-- Contacts Table -->
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>S.No</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach($contacts as $key=>$contact)
                <tr>
                    <td>{{ $key+1 }}</td>
                    <td>{{ $contact->name }}</td>
                    <td>{{ $contact->phone }}</td>
                    <td>
                        <a href="{{ route('contacts.edit', $contact->id) }}" class="btn btn-sm btn-warning">Edit</a>
                        <form action="{{ route('contacts.destroy', $contact->id) }}" method="POST" class="d-inline">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure?')">Delete</button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <script>
        $(document).ready(function () {
            $('.table').DataTable();
        });
    </script>
</body>
</html>