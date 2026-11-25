.class Lcom/google/android/gms/b/ds;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/dr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/dr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ds;->a:Lcom/google/android/gms/b/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/ds;->a:Lcom/google/android/gms/b/dr;

    invoke-virtual {v0}, Lcom/google/android/gms/b/dr;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/g;->c()Lcom/google/android/gms/b/fq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/b/ds;->a:Lcom/google/android/gms/b/dr;

    invoke-static {v2}, Lcom/google/android/gms/b/dr;->a(Lcom/google/android/gms/b/dr;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/b/fq;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
