.class final Lcom/crashlytics/android/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/l;

.field final synthetic b:Lcom/crashlytics/android/c/m;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/l;Lcom/crashlytics/android/c/m;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/crashlytics/android/c/k;->a:Lcom/crashlytics/android/c/l;

    iput-object p2, p0, Lcom/crashlytics/android/c/k;->b:Lcom/crashlytics/android/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 90
    iget-object v0, p0, Lcom/crashlytics/android/c/k;->a:Lcom/crashlytics/android/c/l;

    invoke-interface {v0, v1}, Lcom/crashlytics/android/c/l;->a(Z)V

    .line 91
    iget-object v0, p0, Lcom/crashlytics/android/c/k;->b:Lcom/crashlytics/android/c/m;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/m;->a(Z)V

    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 93
    return-void
.end method
