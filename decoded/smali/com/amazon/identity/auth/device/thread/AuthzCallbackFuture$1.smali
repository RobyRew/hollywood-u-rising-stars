.class Lcom/amazon/identity/auth/device/thread/AuthzCallbackFuture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;


# instance fields
.field final synthetic val$listener:Lcom/amazon/identity/auth/device/shared/APIListener;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/shared/APIListener;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/amazon/identity/auth/device/thread/AuthzCallbackFuture$1;->val$listener:Lcom/amazon/identity/auth/device/shared/APIListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/amazon/identity/auth/device/thread/AuthzCallbackFuture;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCancel called in for APIListener"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public onError(Lcom/amazon/identity/auth/device/AuthError;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amazon/identity/auth/device/thread/AuthzCallbackFuture$1;->val$listener:Lcom/amazon/identity/auth/device/shared/APIListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/amazon/identity/auth/device/thread/AuthzCallbackFuture$1;->val$listener:Lcom/amazon/identity/auth/device/shared/APIListener;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/shared/APIListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    .line 46
    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/identity/auth/device/thread/AuthzCallbackFuture$1;->val$listener:Lcom/amazon/identity/auth/device/shared/APIListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/amazon/identity/auth/device/thread/AuthzCallbackFuture$1;->val$listener:Lcom/amazon/identity/auth/device/shared/APIListener;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/shared/APIListener;->onSuccess(Landroid/os/Bundle;)V

    .line 38
    :cond_0
    return-void
.end method
