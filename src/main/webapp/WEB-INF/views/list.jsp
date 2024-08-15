<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
        crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/dist/css/bootstrap-icons.min.css"
        rel="stylesheet">

    <style>
        .arrow-icon {
            font-size: 2rem;
        }

        .todo-item {
            margin-bottom: 1rem;
            font-size: 1.25rem;
        }

        .btn-custom {
            max-width: 50px;
        }

        .btn-warning {
            width: 100%;
        }

        .dropdown-menu {
            min-width: 150px;
        }

        .input-group {
            border: none;
            border-radius: 0;
        }

        .input-group .form-control,
        .input-group .btn {
            border: none;
            border-radius: 0;
        }

        .input-group-text {
            border: none;
            background-color: transparent;
            border-radius: 0;
        }

        .form-check-input {
            box-shadow: none;
            background-color: transparent;
        }

        .form-check-input:focus {
            box-shadow: none;
        }

        .input-group .form-control {
            box-shadow: none;
        }

        .sortable-row {
            cursor: move;
        }
    </style>
</head>

<body>
    <!-- 네비게이션 바 -->
    <nav class="navbar navbar-expand-lg navbar-custom">
        <div class="container">
            <div class="d-flex w-100 align-items-center">
                <!-- 좌측 버튼 -->
                <button class="btn btn-secondary me-2" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasWithBothOptions" aria-controls="offcanvasWithBothOptions">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-house" viewBox="0 0 16 16">
                        <path
                            d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293zM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5z" />
                    </svg>
                </button>

                <!-- 가운데 드롭다운 -->
                <div class="btn-group flex-grow-1 me-2">
                    <button type="button" class="btn btn-warning dropdown-toggle w-100"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        TODO LIST
                    </button>
                    <ul class="dropdown-menu text-center w-100">
                        <li><a class="dropdown-item" href="#">In Progress</a></li>
                        <hr class="dropdown-divider">
                        <li><a class="dropdown-item" href="#">All Items</a></li>
                        <li><a class="dropdown-item" href="#">Completed</a></li>
                    </ul>
                </div>

                <!-- 우측 버튼 -->
                <button type="button" class="btn btn-secondary btn-square">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-plus-lg" viewBox="0 0 16 16">
                        <path fill-rule="evenodd"
                            d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2" />
                    </svg>
                </button>
            </div>
        </div>
    </nav>
    <div class="container text-center">
        <div class="d-flex flex-column align-items-center">
            <table class="table" id="sortableTable">
                <tbody>
                    <tr>
                        <td>
                            <div class="input-group">
                                <div class="input-group-text">
                                    <input class="form-check-input mt-0" type="checkbox" value=""
                                        aria-label="Checkbox for following text input">
                                </div>
                                <input type="text" class="form-control" value="${값입ㅏ력}" placeholder="Add Item"
                                    aria-label="Recipient's username with two button addons">
                                <button type="button" class="btn btn-square sortable-row">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                        fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
                                        <path
                                            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                                    </svg>
                                </button>
                                <button type="button" class="btn btn-square sortable-row">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                        fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd"
                                            d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5" />
                                    </svg>
                                </button>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <div class="input-group">
                                <div class="input-group-text">
                                    <input class="form-check-input mt-0" type="checkbox" value=""
                                        aria-label="Checkbox for following text input">
                                </div>
                                <input type="text" class="form-control" placeholder="Add Item"
                                    aria-label="Recipient's username with two button addons">
                                <button type="button" class="btn btn-square">
                                </button>
                                <button type="button" class="btn btn-square">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                        fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
                                        <path
                                            d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
                                    </svg>
                                </button>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/sortablejs@1.14.0/Sortable.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"></script>
        <script>
            var sortable = new Sortable(document.querySelector('#sortableTable tbody'), {
                animation: 150,
                handle: '.sortable-row',
                onEnd: function (evt) {
                    console.log('Moved item from index ' + evt.oldIndex + ' to ' + evt.newIndex);
                }
            });
        </script>

</body>

</html>
