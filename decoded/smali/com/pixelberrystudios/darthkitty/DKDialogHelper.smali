.class public Lcom/pixelberrystudios/darthkitty/DKDialogHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/app/Activity;

.field private static c:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static native DKDialogHelperOnClick(JI)V
.end method

.method static synthetic a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->b:Landroid/app/Activity;

    return-object v0
.end method

.method protected static a(JI)V
    .locals 0

    .prologue
    .line 146
    invoke-static {p0, p1, p2}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->DKDialogHelperOnClick(JI)V

    .line 147
    return-void
.end method

.method public static addGPlusIconToDialog(Landroid/app/AlertDialog;)V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/pixelberrystudios/darthkitty/e;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/darthkitty/e;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 58
    return-void
.end method

.method public static getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->c:Landroid/view/View;

    return-object v0
.end method

.method public static onResume()V
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 42
    sget-object v2, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->b:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->showDialogAndMaintainImmersiveMode(Landroid/app/Dialog;Landroid/app/Activity;)V

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public static setActivityAndView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 28
    sput-object p0, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->b:Landroid/app/Activity;

    .line 29
    sput-object p1, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->c:Landroid/view/View;

    .line 30
    return-void
.end method

.method public static showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZJ)V
    .locals 9

    .prologue
    .line 66
    sget-object v7, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->c:Landroid/view/View;

    new-instance v0, Lcom/pixelberrystudios/darthkitty/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-wide v4, p5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/pixelberrystudios/darthkitty/f;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JZ)V

    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method public static showDialogAndMaintainImmersiveMode(Landroid/app/Dialog;Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 136
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 138
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 140
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 142
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 143
    return-void
.end method
