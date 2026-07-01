.class Lcom/pramod/loopmidi/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/loopmidi/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/loopmidi/MainActivity;


# direct methods
.method constructor <init>(Lcom/pramod/loopmidi/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pramod/loopmidi/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 457
    iput-object p1, p0, Lcom/pramod/loopmidi/MainActivity$7;->this$0:Lcom/pramod/loopmidi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 460
    iget-object v0, p0, Lcom/pramod/loopmidi/MainActivity$7;->this$0:Lcom/pramod/loopmidi/MainActivity;

    invoke-static {v0}, Lcom/pramod/loopmidi/MainActivity;->-$$Nest$fgetkitIndex(Lcom/pramod/loopmidi/MainActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/pramod/loopmidi/MainActivity$7;->this$0:Lcom/pramod/loopmidi/MainActivity;

    .line 462
    .local v0, "mainActivity":Lcom/pramod/loopmidi/MainActivity;
    invoke-static {v0}, Lcom/pramod/loopmidi/MainActivity;->-$$Nest$fgetkitIndex(Lcom/pramod/loopmidi/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pramod/loopmidi/MainActivity;->saveKitToMemory(I)V

    .line 463
    iget-object v1, p0, Lcom/pramod/loopmidi/MainActivity$7;->this$0:Lcom/pramod/loopmidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/loopmidi/MainActivity;->access$1210(Lcom/pramod/loopmidi/MainActivity;)I

    .line 464
    iget-object v1, p0, Lcom/pramod/loopmidi/MainActivity$7;->this$0:Lcom/pramod/loopmidi/MainActivity;

    invoke-static {v1}, Lcom/pramod/loopmidi/MainActivity;->-$$Nest$fgetprefs(Lcom/pramod/loopmidi/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/pramod/loopmidi/MainActivity$7;->this$0:Lcom/pramod/loopmidi/MainActivity;

    invoke-static {v2}, Lcom/pramod/loopmidi/MainActivity;->-$$Nest$fgetkitIndex(Lcom/pramod/loopmidi/MainActivity;)I

    move-result v2

    const-string v3, "kit_index"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 465
    iget-object v1, p0, Lcom/pramod/loopmidi/MainActivity$7;->this$0:Lcom/pramod/loopmidi/MainActivity;

    .line 466
    .local v1, "mainActivity2":Lcom/pramod/loopmidi/MainActivity;
    invoke-static {v1}, Lcom/pramod/loopmidi/MainActivity;->-$$Nest$fgetkitIndex(Lcom/pramod/loopmidi/MainActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pramod/loopmidi/MainActivity;->loadKitFromMemory(I)V

    .line 467
    return-void

    .line 469
    .end local v0    # "mainActivity":Lcom/pramod/loopmidi/MainActivity;
    .end local v1    # "mainActivity2":Lcom/pramod/loopmidi/MainActivity;
    :cond_0
    iget-object v0, p0, Lcom/pramod/loopmidi/MainActivity$7;->this$0:Lcom/pramod/loopmidi/MainActivity;

    const-string v1, "Already First Kit!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 470
    return-void
.end method
