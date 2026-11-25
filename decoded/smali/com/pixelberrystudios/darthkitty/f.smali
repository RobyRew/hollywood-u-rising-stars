.class final Lcom/pixelberrystudios/darthkitty/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JZ)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/pixelberrystudios/darthkitty/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/pixelberrystudios/darthkitty/f;->c:[Ljava/lang/String;

    iput-wide p4, p0, Lcom/pixelberrystudios/darthkitty/f;->d:J

    iput-boolean p6, p0, Lcom/pixelberrystudios/darthkitty/f;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 68
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 71
    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 75
    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/f;->c:[Ljava/lang/String;

    array-length v1, v1

    if-gt v1, v5, :cond_4

    .line 76
    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/f;->c:[Ljava/lang/String;

    array-length v1, v1

    if-lt v1, v3, :cond_0

    .line 77
    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/f;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-instance v2, Lcom/pixelberrystudios/darthkitty/g;

    invoke-direct {v2, p0}, Lcom/pixelberrystudios/darthkitty/g;-><init>(Lcom/pixelberrystudios/darthkitty/f;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/f;->c:[Ljava/lang/String;

    array-length v1, v1

    if-lt v1, v4, :cond_1

    .line 87
    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/f;->c:[Ljava/lang/String;

    aget-object v1, v1, v3

    new-instance v2, Lcom/pixelberrystudios/darthkitty/h;

    invoke-direct {v2, p0}, Lcom/pixelberrystudios/darthkitty/h;-><init>(Lcom/pixelberrystudios/darthkitty/f;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/f;->c:[Ljava/lang/String;

    array-length v1, v1

    if-lt v1, v5, :cond_2

    .line 97
    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/f;->c:[Ljava/lang/String;

    aget-object v1, v1, v4

    new-instance v2, Lcom/pixelberrystudios/darthkitty/i;

    invoke-direct {v2, p0}, Lcom/pixelberrystudios/darthkitty/i;-><init>(Lcom/pixelberrystudios/darthkitty/f;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    :cond_2
    :goto_0
    new-instance v1, Lcom/pixelberrystudios/darthkitty/k;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/darthkitty/k;-><init>(Lcom/pixelberrystudios/darthkitty/f;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 126
    iget-boolean v1, p0, Lcom/pixelberrystudios/darthkitty/f;->e:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/f;->c:[Ljava/lang/String;

    array-length v1, v1

    if-lt v1, v3, :cond_3

    .line 127
    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->addGPlusIconToDialog(Landroid/app/AlertDialog;)V

    .line 129
    :cond_3
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->showDialogAndMaintainImmersiveMode(Landroid/app/Dialog;Landroid/app/Activity;)V

    .line 130
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void

    .line 106
    :cond_4
    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/f;->c:[Ljava/lang/String;

    new-instance v2, Lcom/pixelberrystudios/darthkitty/j;

    invoke-direct {v2, p0}, Lcom/pixelberrystudios/darthkitty/j;-><init>(Lcom/pixelberrystudios/darthkitty/f;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
