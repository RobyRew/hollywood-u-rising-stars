.class Lcom/google/android/gms/b/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/y;->a:Lcom/google/android/gms/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/b/y;->a:Lcom/google/android/gms/b/x;

    iget-object v0, v0, Lcom/google/android/gms/b/x;->e:Lcom/google/android/gms/b/v;

    iget-object v1, p0, Lcom/google/android/gms/b/y;->a:Lcom/google/android/gms/b/x;

    iget-object v1, v1, Lcom/google/android/gms/b/x;->b:Lcom/google/android/gms/b/s;

    iget-object v2, p0, Lcom/google/android/gms/b/y;->a:Lcom/google/android/gms/b/x;

    iget-object v2, v2, Lcom/google/android/gms/b/x;->c:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/google/android/gms/b/y;->a:Lcom/google/android/gms/b/x;

    iget-boolean v3, v3, Lcom/google/android/gms/b/x;->d:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/b/v;->a(Lcom/google/android/gms/b/s;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/y;->a(Ljava/lang/String;)V

    return-void
.end method
