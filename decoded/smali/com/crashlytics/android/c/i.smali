.class final Lcom/crashlytics/android/c/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/m;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/m;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/crashlytics/android/c/i;->a:Lcom/crashlytics/android/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/crashlytics/android/c/i;->a:Lcom/crashlytics/android/c/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/m;->a(Z)V

    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    return-void
.end method
