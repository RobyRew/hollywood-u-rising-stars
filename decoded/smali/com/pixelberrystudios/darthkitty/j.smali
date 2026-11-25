.class Lcom/pixelberrystudios/darthkitty/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/f;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/f;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/j;->a:Lcom/pixelberrystudios/darthkitty/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/j;->a:Lcom/pixelberrystudios/darthkitty/f;

    iget-wide v0, v0, Lcom/pixelberrystudios/darthkitty/f;->d:J

    invoke-static {v0, v1, p2}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->a(JI)V

    .line 111
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method
