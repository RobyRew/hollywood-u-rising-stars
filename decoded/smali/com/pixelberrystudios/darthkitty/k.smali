.class Lcom/pixelberrystudios/darthkitty/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/f;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/f;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/k;->a:Lcom/pixelberrystudios/darthkitty/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 120
    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/k;->a:Lcom/pixelberrystudios/darthkitty/f;

    iget-wide v2, v1, Lcom/pixelberrystudios/darthkitty/f;->d:J

    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/k;->a:Lcom/pixelberrystudios/darthkitty/f;

    iget-object v1, v1, Lcom/pixelberrystudios/darthkitty/f;->c:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v0, :cond_0

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->a(JI)V

    .line 121
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 122
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
