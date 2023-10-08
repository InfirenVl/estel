<#import "templates/common.ftl" as common>
<@common.pageTemplate "Пользователи">
    <section>
        <h2>Пользователи</h2>
        <table class="usersTable">
            <tr class="tableHeader">
                <td>ID</td>
                <td>Username</td>
                <td>Role</td>
                <td>Password</td>
            </tr>
            <#foreach user in allUsers>
                <tr class="tableBody">
                    <td class="tableBody-info_cell">${user.id}</td>
                    <td class="tableBody-info_cell">${user.username}</td>
                    <td class="tableBody-info_cell">${user.role}</td>
                    <td class="tableBody-info_cell">${user.password}</td>
                    <td class="tableBody-button_cell">
                        <form action="/admin/user-editing/delete" method="post">
                            <input type="hidden" name="userId" value="${user.id}"/>
                            <button type="submit">Delete</button>
                        </form>
                    </td>
                    <td class="tableBody-button_cell">
                        <form action="/admin/user-editing/change" method="post">
                            <input type="hidden" name="userId" value="${user.id}"/>
                            <input type="hidden" name="userRole" value="${user.role}"/>
                            <button type="submit"><#if user.role == "USER">Op<#else>Deop</#if></button>
                        </form>
                    </td>
                </tr>
            </#foreach>
        </table>
    </section>
</@common.pageTemplate>