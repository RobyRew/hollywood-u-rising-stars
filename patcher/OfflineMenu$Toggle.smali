.class public Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Toggle;
.super Ljava/lang/Object;
.source "OfflineMenu.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Toggle;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Toggle;->b:Ljava/lang/String;

    iput p3, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Toggle;->c:I

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object p1, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Toggle;->a:Landroid/app/Activity;

    const-string v0, "rr"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Toggle;->b:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    iget v0, p0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu$Toggle;->c:I

    shl-int p1, p1, v0

    sget v0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->flags:I

    if-eqz p2, :off

    or-int/2addr v0, p1

    goto :save

    :off
    not-int p1, p1

    and-int/2addr v0, p1

    :save
    sput v0, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->flags:I

    invoke-static {}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->apply()V

    return-void
.end method
